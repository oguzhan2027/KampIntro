using System;
using System.Collections.Generic;

namespace OOP3
{
    class Program
    {
        static void Main(string[] args)
        {
            // interface new lenemez
            // interface onu implement eden klasın referans numarasını tutabiilr
            // interfaceler birbirinin alternatifi olan ama kod içerikleri
            //farklı olan durumlar için kullanılır
            IKrediManager ihtiyacKrediManager = new IhtıyacKrediManager();           
            IKrediManager tasitKrediManager = new TasitKrediManager();           
            IKrediManager konutKrediManager = new KonutKrediManager();

            ILoggerService databaseLoggerService = new DataBaseLoggerService();
            ILoggerService fileLoggerService = new FileLoggerService();

            BasvuruManager basvuruManager = new BasvuruManager();
            basvuruManager.BasvuruYap(new EsnafKrediManager(), new List<ILoggerService>
            {new DataBaseLoggerService(), new SmsLoggerService() });


            List<IKrediManager> krediler = new List<IKrediManager>() { ihtiyacKrediManager, 
                tasitKrediManager, konutKrediManager};

           // basvuruManager.KrediOnBilgilendiremsiYap(krediler);
            





        }
    }
}
