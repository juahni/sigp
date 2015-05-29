from django.test import TestCase
from django.test.client import RequestFactory

from django.contrib.auth.models import User
from models import Cliente
from views import listarClientes


class ClientesTest(TestCase):
    """
    Clase que realiza el Test del modulo de administracion de clientes
    """
    def setUp(self):
        """
        Funcion que inicializa el RequestFactory y un cliente de prueba para
        realizar los test
        """
        # Se crea el Request factory pars simular peticiones
        self.factory = RequestFactory()
        # Se crea el User que realiza las peticiones
        self.user = User.objects.create_user(username='testuser', email='test@test.com', password='test')

    def test_view_ClienteIndexView(self):
        """
        Funcion que realiza el test sobre la vista listarClientes que genera
        lista de clientes
        """
        # se loguea el usuario testuser
        user = self.client.login(username='testuser', password='test')
        self.assertTrue(user)
        # se crean 10 Clientes para controlar que se retorne la lista completa de usuarios, que seran 11 en total
        for i in range(10):
            cliente = Cliente.objects.create(nombre = 'cliente%s' % i, descripcion = 'Test%s' %
                              i, correoElectronico='test%s@test.com' % i, telefono = '098269696%s' % i, direccion = 'calle%s' % i )
            #Usuario.objects.create(user=user, telefono='tel%s' % i, direccion="dir%s" % i)

        # verificamos que la vista devuelva el template adecuado
        request = self.factory.get('/clientes/')
        view = listarClientes.as_view()
        response = view(request)
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.template_name[0], 'clientes/index.html')
        # verificamos los usuarios retornados
        self.assertEqual(len(response.context_data['object_list']), 10)

        print 'Test de listarClientes realizado exitosamente'

    def test_view_crearCliente(self):
        """
        Funcion que realiza el test sobre la vista crearCliente que genera
        un nuevo cliente
        """
        # se loguea el usuario testuser
        user = self.client.login(username='testuser', password='test')
        self.assertTrue(user)
        cliente = Cliente.objects.create(nombre='cliente', descripcion='Test',
                                         correoElectronico='test@test.com', telefono='098269696',
                                         direccion='calle')

        self.assertEqual(cliente.nombre, 'cliente')
        self.assertEqual(cliente.direccion, 'calle')

        print 'Test de crearCliente realizado exitosamente'

    def test_view_actualizarCliente(self):
        """
        Funcion que realiza el test sobre la vista UserStoryUpdate que modifica
        un user story existente
        """
        # se loguea el usuario testuser
        user = self.client.login(username='testuser', password='test')
        self.assertTrue(user)

        cliente = Cliente.objects.create(nombre='cliente', descripcion='Test',
                                         correoElectronico='test@test.com', telefono='098269696',
                                         direccion='calle')

        # se crean nuevos valores para los atributos
        nuevo_telefono = '585999'
        nuevo_nombre = 'persona'

        # Se modifican los atributos del usuario
        cliente.telefono = nuevo_telefono
        cliente.nombre = nuevo_nombre
        cliente.save()

        self.assertEqual(cliente.telefono, '585999')
        self.assertEqual(cliente.nombre, 'persona')

        print 'Test de actualizarCliente realizado exitosamente'