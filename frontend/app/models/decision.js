import DS from 'ember-data';
const {attr,hasMany,belongsTo} = DS
import Dialogstep from './dialogstep';

export default Dialogstep.extend({
  explanation: attr('string'),
  question: attr('string'),
  ownoptions: hasMany('option'),
});
