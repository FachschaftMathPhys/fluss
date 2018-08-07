import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(),
  label: attr('string'),
  decisions: hasMany('decision',{inverse: "ownoptions"}),
  optionfollowup: hasOne('dialogstep',{polymorphic:true})
});
