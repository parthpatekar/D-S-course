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
            csv: "",
            assList:[],

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
                console.log(this.assignList);
                this.showAssignmentTable = true;
            })
            .catch( (err) => {
                console.error(err);
            })
        },
        displayUnassigned() {
            fetch('/api/assignments/refassign.php')
            .then( response => response.json() )
            .then( (responseJson) => {                
                this.assList = responseJson;                
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
        convert2CSV(event, tableJSON, entityType) {            
            let csvContent = "data:text/csv;charset=utf-8,";
            csvContent += Object.keys(tableJSON[0]).join(",")+"\r\n";
            tableJSON.forEach(function(rowObj) {
                let row = Object.values(rowObj).join(",");
                csvContent += row + "\r\n";
            });

            var encodedUri = encodeURI(csvContent);
            var link = document.createElement("a");
            link.setAttribute("href", encodedUri);

            link.setAttribute("download", entityType + ".csv");
            document.body.appendChild(link);
            link.click();
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
        this.displayUnassigned();
    }
}

Vue.createApp(App).mount('#app')