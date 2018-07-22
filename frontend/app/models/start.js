import DS from 'ember-data';

export default DS.Model.extend({
  first: DS.belongsTo('dialogstep',{polymorphic:true})
});
