const Controller = {
    data() {
        return {
            refereeList: [],
            newRefereeForm: {}
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
        }
    },
    created() {
        this.fetchRefereeList();
    }
}

Vue.createApp(Controller).mount('#controller')