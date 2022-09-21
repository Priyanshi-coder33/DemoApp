import Ember from 'ember';

export default Ember.Controller.extend({
    action: {
        AddTodo(){
            new_todo = this.get('store').createRecord('todo',{
                todo_text: this.get('todo_name'),
                due_date: this.get('due_date'),
                status: false
            });
            new_todo.save();
            return this.get('store').findAll('todo');
        }
    }
});
