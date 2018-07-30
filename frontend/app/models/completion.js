import DS from 'ember-data';
import Dialogstep from './dialogstep';

export default Dialogstep.extend({
  failure:DS.attr('string'),
  success:DS.attr('string'),
});
