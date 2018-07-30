import DS from 'ember-data';
const {attr,hasMany,belongsTo} = DS
export default DS.Model.extend({
  label: attr('string'),
  decisions: hasMany('decision',{inverse: "ownoptions"}),
  optionfollowup: belongsTo('dialogstep',{polymorphic:true})
});
