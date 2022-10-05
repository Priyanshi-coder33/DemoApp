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
            this.get('store').findRecord('todo', 2).then(function(task) {
                // ...after the record has loaded
                if(todo.status==true){
                    task.set('status', false);
                }
                else{
                    task.set('status',true);
                }
                task.save();
            });
        }
    }
});
