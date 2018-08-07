import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

import Dialogstep from './dialogstep';
export default Dialogstep.extend({
  explanation: attr('string'),
  title: attr('string'),
  forms: hasMany('form'),
  selfollowup: hasOne('dialogstep',{polymorphic:true}),
});
