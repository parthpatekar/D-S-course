const App = {
    data() {
        return {
            refereesList: [],
            assignList:[],
            gamesList: [],
            manageAssignmentsList: [],
            newForm: {},
            updateForm: {},
            dateform:{},

            showAssignmentTable: false,
        }
    },
    methods: {      
        nameWithLang ({ name, language }) {
            return `${name} — [${language}]`
        },
        displayAssignments(event) {
            fetch('/api/assignments/assign.php', {
                method:'POST',
                body: JSON.stringify(this.dateform),
                headers: {
                  "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => response.json() )
            .then( (responseJson) => {                
                this.assignList = responseJson;
                this.showAssignmentTable = true;
            })
            .catch( (err) => {
                console.error(err);
            })
        },
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
        fetchAssignmentsList() {
            fetch('/api/manageAssignments/manageAssignments.php')
            .then( response => response.json() )
            .then( (responseJson) => {                
                this.manageAssignmentsList = responseJson;                
            })
            .catch( (err) => {
                console.error(err);
            })
        },
        edit(entity, entityType){           
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
            else if(entityType == 'assignment')
                var request = 'api/manageAssignments/update.php';
            
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
            else if(entityType == 'assignment')
                var request = '/api/manageAssignments/create.php';
            
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
                else if(entityType == 'assignment')
                    this.fetchAssignmentsList();
                this.newForm = {};
            });
        },
        deleteEntity(entity, entityType) {
            if(entityType == 'referee')
                var message = "Are you sure you want to delete the referee, " + entity.refereeFirstName + " " + entity.refereeLastName + "?";
            else if(entityType == 'game')
                var message = "Are you sure you want to delete the game, " + entity.gameLocation + "?";
            else if(entityType == 'assignment')
                var message = "Are you sure you want to delete the assignment for gameID = " + entity.gameID + "?";

            if (!confirm(message)) {
                return ;
            }

            if(entityType == 'referee')
                var request = 'api/referees/delete.php';
            else if(entityType == 'game')
                var request = 'api/games/delete.php';
            else if(entityType == 'assignment')
                var request = 'api/manageAssignments/delete.php';
            
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
                else if(entityType == 'assignment')
                    this.fetchAssignmentsList();
            });            
        }
    },
    created() {
        this.fetchRefereesList();
        this.fetchGamesList();
        this.fetchAssignmentsList();
    }
}

Vue.createApp(App).mount('#app')