import { FastifyInstance } from 'fastify'
import { register } from './controllers/registers'

export async function appRoutes(app: FastifyInstance) {
  app.post('/users', register)
}
