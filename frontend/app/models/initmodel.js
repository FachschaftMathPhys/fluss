import DS from 'ember-data';

export default DS.Model.extend({
  model: DS.attr('string'),
  initfollowup: DS.belongsTo('initfollowup',{polymorphic:true}),
});
