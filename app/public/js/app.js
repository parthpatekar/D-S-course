const App = {
    // components: { VueSelect },
    // setup() {
    //     const modelValue = ref([])
    //     // options must includes modelValue, otherwise vue-next-select will remove those modelValue
    //     const options = computed(() => [...new Set([...visibleOptions.value].concat(modelValue.value))])
    //     const visibleOptions = ref<string[]>([])

    //     const latestTimestamp = ref()
    //     const loading = ref(false)
    //     async function handleInput(inputEvent: InputEvent) {
    //     const timestamp = (latestTimestamp.value = Date.now())
    //     const target = inputEvent.target as HTMLInputElement | null

    //     if (target?.value === '') {
    //         visibleOptions.value = [...modelValue.value]
    //         return
    //     }

    //     loading.value = true
    //     await new Promise(resolve => setTimeout(resolve, 500))
    //     if (timestamp === latestTimestamp.value) {
    //         visibleOptions.value = userNames.value.filter(name => name.includes(target?.value!))
    //     }
    //     loading.value = false
    //     }

    //     return {
    //     modelValue,
    //     options,
    //     visibleOptions,
    //     loading,
    //     handleInput,
    //     }
    // },
    data() {
        return {
            refereesList: [],
            gamesList: [],
            newForm: {},
            updateForm: {},

            options: [
                "Cat",
                "Dog",
                "Elephant",
                "Girafe",
                "Snake",
                "Spider",
                "Unicorn"
            ],
          
            selected: null
        }
    },
    methods: {      
        nameWithLang ({ name, language }) {
            return `${name} — [${language}]`
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