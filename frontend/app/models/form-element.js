import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  typ: attr('string'),
  label: attr('string'),
  dataField: attr('string'),
  forms: hasMany('form')
});
