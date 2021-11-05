const App = {
    data() {
        return {
            refereesList: [],
            gamesList: [],
            newForm: {},
            updateForm: {}
        }
    },
    methods: {
        fetchRefereesList() {
            fetch('/api/referees/referees.php')
            .then( response => response.json() )
            .then( (responseJson) => {                
                this.refereesList = responseJson;                
            })
            .catch( (err) => {
                console.error(err);
            })
        },
        fetchGamesList() {
            fetch('/api/games/games.php')
            .then( response => response.json() )
            .then( (responseJson) => {                
                this.gamesList = responseJson;                
            })
            .catch( (err) => {
                console.error(err);
            })
        },
        edit(entity){
            entity.editmode = true;            
        },
        cancelEdit(entity, entityType){
            entity.editmode = false;
            if(entityType == 'referee')
                this.fetchRefereesList();
            else if(entityType == 'game')
                this.fetchGamesList();
        },
        save(entity, entityType){   
            this.updateForm = entity;
            entity.editmode = false;

            if(entityType == 'referee')
                var request = 'api/referees/update.php';
            else if(entityType == 'game')
                var request = 'api/games/update.php';
            
            fetch(request, {
                method:'POST',
                body: JSON.stringify(this.updateForm),
                headers: {
                  "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( () => {
                if(entityType == 'referee')
                    this.fetchRefereesList();
                else if(entityType == 'game')
                    this.fetchGamesList();
                this.updateForm = {};
            });            
        },
        addNew(event, entityType) {
            if(entityType == 'referee')
                var request = '/api/referees/create.php';
            else if(entityType == 'game')
                var request = '/api/games/create.php';

            console.log(JSON.stringify(this.newForm));
            fetch(request, {
                method: "POST",
                body: JSON.stringify(this.newForm),
                headers: {
                    "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( () => {
                if(entityType == 'referee')
                    this.fetchRefereesList();
                else if(entityType == 'game')
                    this.fetchGamesList();
                this.newForm = {};
            });
        },
        deleteEntity(entity, entityType) {
            if(entityType == 'referee')
                var message = "Are you sure you want to delete the referee, " + entity.refereeFirstName + " " + entity.refereeLastName + "?";
            else if(entityType == 'game')
                var message = "Are you sure you want to delete the game, " + " " + entity.gameLocation + "?";

            if (!confirm(message)) {
                return ;
            }

            if(entityType == 'referee')
                var request = 'api/referees/delete.php';
            else if(entityType == 'game')
                var request = 'api/games/delete.php';
            
            fetch(request, {
                method:'POST',
                body: JSON.stringify(entity),
                headers: {
                  "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( () => {
                if(entityType == 'referee')
                    this.fetchRefereesList();
                else if(entityType == 'game')
                    this.fetchGamesList();
            });            
        }
    },
    created() {
        this.fetchRefereesList();
        this.fetchGamesList();
    }
}

Vue.createApp(App).mount('#app')