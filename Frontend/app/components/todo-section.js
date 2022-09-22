import Ember from 'ember';

export default Ember.Component.extend({
    store: Ember.inject.service(),
    actions: {
        DeleteTodo(todo){
            if(confirm("Do you really want to delete it")){
                todo.destroyRecord();
            }
            else{
                return this.get('store').findAll('todo');
            }
        },
        Changestatus(event,todo){
            // event.preventDefault();
            if(todo.status=true){
                this.set(todo.status,"false");
            }
            else{
                this.set(todo.status,"true");
            }
        }
    }
});
