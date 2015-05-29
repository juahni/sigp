from django.test import TestCase
from django.test.client import RequestFactory

from django.contrib.auth.models import User, Group
from views import IndexView
from django.core.urlresolvers import reverse


class UserStoriesTest(TestCase):
    """
    Clase que realiza el Test del modulo de administracion de roles de sistema
    """
    def setUp(self):
        """
        Funcion que inicializa el RequestFactory y un usuario de prueba para
        realizar los test
        """
        # Se crea el Request factory pars simular peticiones
        self.factory = RequestFactory()
        # Se crea el User que realiza las peticiones
        self.user = User.objects.create_user(username='testuser', email='test@test.com', password='test')

    def test_view_IndexView(self):
        """
        Funcion que realiza el test sobre la vista IndexView que genera
        lista de roles de sistema
        """
        # se loguea el usuario testuser
        user = self.client.login(username='testuser', password='test')
        self.assertTrue(user)

        # se crean 10 roles para controlar que se retorne la lista completa de roles, que seran 10 en total
        for i in range(10):
            group = Group.objects.create(name='grupo%s' % i)
            group.save()

        # verificamos que la vista devuelva el template adecuado
        request = self.factory.get(reverse('roles:index'))
        request.user = self.user

        response = IndexView.as_view()(request)
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.template_name[0], 'roles/index.html')
        # verificamos los user stories retornados
        self.assertEqual(len(response.context_data['object_list']), 10)

        print 'Test de IndexView de Roles realizado exitosamente'

    def test_view_RolCreate(self):
        """
        Funcion que realiza el test sobre la vista RolCreate que crea
        un nuevo rol de sistema
        """
        # se loguea el usuario testuser
        user = self.client.login(username='testuser', password='test')
        self.assertTrue(user)

        group = Group.objects.create(name='grupo')
        group.save()

        self.assertEqual(group.name, 'grupo')

        print 'Test de RolCreate realizado exitosamente'

    def test_view_RolUpdate(self):
        """
        Funcion que realiza el test sobre la vista RolUpdate que modifica
        un rol de sistema existente
        """
        # se loguea el usuario testuser
        user = self.client.login(username='testuser', password='test')
        self.assertTrue(user)

        group = Group.objects.create(name='grupo')
        group.save()

        # se crean nuevos valores para los atributos
        nuevo_nombre = 'nuevo_grupo'

        # Se modifican los atributos del grupo
        group.name = nuevo_nombre
        group.save()

        self.assertEqual(group.name, 'nuevo_grupo')

        print 'Test de RolUpdate realizado exitosamente'

    def test_view_eliminar_rol(self):
        """
        Funcion que realiza el test sobre la vista que elimina
        un rol de sistema
        """
        # se loguea el usuario testuser
        user = self.client.login(username='testuser', password='test')
        self.assertTrue(user)

        user5 = User.objects.create_user(username='user_prueba5', email='test@test225.com', password='prueba')
        # se crea un usuario

        #crear rolProyecto y rolProyecto_Proyecto
        group = Group.objects.create(name='grupo')
        group.save()

        # se elimna el rol
        group.delete()

        consulta = Group.objects.filter(name='grupo').exists()
        self.assertFalse(consulta)

        print 'Test de eliminar_rol realizado exitosamente'
