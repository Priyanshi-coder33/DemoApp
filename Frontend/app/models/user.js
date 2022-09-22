import DS from 'ember-data';

export default DS.Model.extend({
    Name: DS.attr('string'),
    Email: DS.attr(),
    Password: DS.attr()
});
