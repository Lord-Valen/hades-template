import { HadesContainer } from 'hades'
import 'reflect-metadata'
import { BotService } from './services/BotService';

const container = new HadesContainer();
const bot = container.get(BotService);
bot.login()
