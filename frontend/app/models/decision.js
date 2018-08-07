import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

import Dialogstep from './dialogstep';

export default Dialogstep.extend({
  explanation: attr('string'),
  question: attr('string'),
  ownoptions: hasMany('option'),
});
