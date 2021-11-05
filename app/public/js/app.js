const App = {
    data() {
        return {
            refereeList: [],
            gamesList: [],
            newForm: {},
            updateForm: {}
        }
    },
    methods: {
        fetchRefereeList() {
            fetch('/api/referees/referees.php')
            .then( response => response.json() )
            .then( (responseJson) => {                
                this.refereeList = responseJson;                
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
                this.fetchRefereeList();
        },
        save(entity, entityType){   
            this.updateForm = entity;
            entity.editmode = false;
            if(entityType == 'referee')
                var request = 'api/referees/update.php';
            // else if(entityType == 'games')
            //     var
            fetch(request, {
                method:'POST',
                body: JSON.stringify(this.updateForm),
                headers: {
                  "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => response.json() )
            .then( json => {
                if(entityType == 'referee')
                    this.refereeList = json;
                this.updateForm = {};
            });
        },
        addNew(event, entityType) {
            if(entityType == 'referee')
                var request = '/api/referees/create.php';
            fetch(request, {
                method: "POST",
                body: JSON.stringify(this.newForm),
                headers: {
                    "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => {
                return response.json();
            })
            .then( json => {
                if(entityType == 'referee')
                    this.refereeList = json;
                this.newForm = {};
            });
        },
        deleteEntity(entity, entityType) {
            console.log('Yo!');
            if(entityType == 'referee')
                var message = "Are you sure you want to delete the referee, " + entity.refereeFirstName + " " + entity.refereeLastName + "?";

            if (!confirm(message)) {
                return ;
            }

            if(entityType == 'referee')
                var request = 'api/referees/delete.php';
            fetch(request, {
                method:'POST',
                body: JSON.stringify(entity),
                headers: {
                  "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => response.json() )
            .then( json => {
                if(entityType == 'referee')
                    this.refereeList = json;
            });
        }        
    },
    created() {
        this.fetchRefereeList();
    }
}

Vue.createApp(App).mount('#app')