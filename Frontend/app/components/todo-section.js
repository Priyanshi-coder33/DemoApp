import Ember from "ember";

export default Ember.Component.extend({
  store: Ember.inject.service(),
  actions: {
    DeleteTodo(todo) {
      if (confirm("Do you really want to delete it")) {
        todo.destroyRecord();
      } else {
        return this.get("store").findAll("todo");
      }
    },
    Changestatus(todo) {
      todo.toggleProperty("status");
      todo.save();
      alert("Status updated!");
      return this.get("store").findAll("todo");
    },
  },
});
