import Ember from 'ember';

export default Ember.Controller.extend({
    action: {
        DeleteTodo(params){
                this.get('store').findRecord('todo', params.todo_id).then(function(todo) {
                    todo.deleteRecord();
                    todo.get('isDeleted'); // => true
                    todo.save(); // => DELETE to /posts/1
                  });
                return this.get('store').findAll('todo')
                // console.log(this.get('store').findAll('todo'))
                // alert("Hi I am action");
        }
    }
});