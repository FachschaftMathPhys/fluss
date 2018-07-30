import DS from 'ember-data';
const {attr,hasMany,belongsTo} = DS
import Dialogstep from './dialogstep';
export default Dialogstep.extend({
  explanation: attr('string'),
  title: attr('string'),
  forms: hasMany('form'),
  selfollowup: belongsTo('dialogstep',{polymorphic:true}),
});
