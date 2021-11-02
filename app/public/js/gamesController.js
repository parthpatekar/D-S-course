const GameController = {
    data() {
        return {
            gameList: [],
            newGameForm: {},
            updateGameForm: {}
        }
    },
    methods: {
        fetchGameList() {
            fetch('/api/games/games.php')
            .then( response => response.json() )
            .then( (responseJson) => {                
                this.gameList = responseJson;                
            })
            .catch( (err) => {
                console.error(err);
            })
        },
        edit(game){
            game.editmode = true;            
        },
        cancelEdit(game){
            game.editmode = false;
            this.fetchGameList();
        },
        save(game){            
            this.updateGameForm = game;
            game.editmode = false;
            fetch('api/games/update.php', {
                method:'POST',
                body: JSON.stringify(this.updateGameForm),
                headers: {
                  "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => response.json() )
            .then( json => {
                this.gameList = json;
                this.updateGameForm = {};
            });
        },
        addNewGame(event) {
            fetch('/api/games/create.php', {
                method: "POST",
                body: JSON.stringify(this.newGameForm),
                headers: {
                    "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => response.json() )
            .then( json => {
                console.log(json);
                this.gameList = json;
                this.newGameForm = {};
            });
        },
        deleteGame(game) {
            if (!confirm("Are you sure you want to delete the game, " + " " + game.gameLocation + "?")) {
                return;
            }
            fetch('api/games/delete.php', {
                method:'POST',
                body: JSON.stringify(game),
                headers: {
                  "Content-Type": "application/json; charset=utf-8"
                }
            })
            .then( response => response.json() )
            .then( json => {
                this.gameList = json;
            });
        }        
    },
    created() {
        this.fetchGameList();
    }
}

Vue.createApp(GameController).mount('#game-controller')