import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  const port = 3001;

  app.listen(port, () => console.log(`Server started port=${port}`));
}
bootstrap();
