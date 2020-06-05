import { Application } from 'egg';

export default (app: Application) => {
  const { controller, router } = app;

  router.get('/', controller.home.index);
  // router.get('/users', controller.users);
  router.resources('users', '/users', controller.user);

};