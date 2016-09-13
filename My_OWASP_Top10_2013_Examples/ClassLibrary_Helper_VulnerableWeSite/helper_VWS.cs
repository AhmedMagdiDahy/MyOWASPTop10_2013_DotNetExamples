using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassLibrary_Helper_VulnerableWeSite
{
    public static class helper_VWS
    {
        public static Dictionary<int, List<string>> gerarDadosInfo()
        {
            return new Dictionary<int, List<string>>() { { 1, new List<string>() { "dados...User1", "mais dados...user1", "mais mais dados...user1" } }, { 2, new List<string>() { "dados do User2", "dados21 do User2", "dados22 do User2" } } };
        }

        public static Dictionary<string, int> gerarUsers()
        {
                    return new Dictionary<string, int>() { { "daniel", 1 }, { "carlos", 2 } };
            
        }

        public static Dictionary<string, int> gerarMuitosUsers()
        {
            return new Dictionary<string, int>() { { "daniel", 1 }, { "carlos", 2 }, { "daniel2", 3 }, { "carlos2", 4 } };

        }

        public static int doLogin(string key)
        {
            if (gerarUsers().ContainsKey(key))

                return gerarUsers()[key];

            else
                return -1;
        }
    }
}
