import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  title: attr('string'),
  selections: hasMany('selection'),
  formElements: hasMany('form-element')
});
