import Ember from 'ember';

export default Ember.Controller.extend({
    // todo_text: "",
    // due_date: "",
    actions: {
        AddTodo(){
            let task = this.get('store').createRecord('todo',{
                todo_text: this.get('todo_text'),
                due_date: this.get('due_date'),
                status: false
            });
            // alert("Hi I am -in action")
            task.save();
        }
    }
});
