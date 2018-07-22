import DS from 'ember-data';
const {attr,hasMany,belongsTo} = DS
export default DS.Model.extend({
  label: attr('string'),
  decisions: hasMany('decision'),
  optionfollowup: belongsTo('optionfollowup',{polymorphic:true})
});
