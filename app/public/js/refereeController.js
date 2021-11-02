const RefereeController = {
    data() {
        return {
            refereeList: [],
            newRefereeForm: {},
            updateRefereeForm: {}
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
        edit(referee){
            referee.editmode = true;            
        },
        cancelEdit(referee){
            referee.editmode = false;
            this.fetchRefereeList();
        },
        save(referee){            
            this.updateRefereeForm = referee;
            referee.editmode = false;
            fetch('api/referees/update.php', {
                method:'POST',
                body: JSON.stringify(this.updateRefereeForm),
                headers: {
                  "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => response.json() )
            .then( json => {
                this.refereeList = json;
                this.updateRefereeForm = {};
            });
        },
        addNewReferee(event) {
            fetch('/api/referees/create.php', {
                method: "POST",
                body: JSON.stringify(this.newRefereeForm),
                headers: {
                    "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => response.json() )
            .then( json => {
                console.log(json);
                this.refereeList = json;
                this.newRefereeForm = {};
            });
        },
        deleteReferee(referee) {
            if (!confirm("Are you sure you want to delete the referee, " + referee.refereeFirstName + " " + referee.refereeLastName + "?")) {
                return;
            }
            fetch('api/referees/delete.php', {
                method:'POST',
                body: JSON.stringify(referee),
                headers: {
                  "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => response.json() )
            .then( json => {
                this.refereeList = json;
            });
        }        
    },
    created() {
        this.fetchRefereeList();
    }
}

Vue.createApp(RefereeController).mount('#referee-controller')