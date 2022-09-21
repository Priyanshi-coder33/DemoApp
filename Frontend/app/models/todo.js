import DS from 'ember-data';

export default DS.Model.extend({
    todo_text: DS.attr('string'),
    due_date: DS.attr(),
    status: DS.attr('boolean')
});
