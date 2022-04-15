sqlite3 excursion_service.db < sql/create.sql
sqlite3 excursion_service.db < sql/insert_samples.sql

echo ".tables" | sqlite3 excursion_service.db
echo

echo "----- usuarios -----"
echo "select * from usuario;" | sqlite3 excursion_service.db
echo

echo "----- excursoes -----"
echo "select * from excursao;" | sqlite3 excursion_service.db
echo

echo "----- avaliacoes -----"
echo "select * from avaliacao;" | sqlite3 excursion_service.db
echo

echo "----- sessoes -----"
echo "select * from sessao;" | sqlite3 excursion_service.db
echo -e "\n\n"


echo "-----> deletando dado de excursoes para verificar se avaliações da mesma serão deletadas também..."
sqlite3 excursion_service.db < sql/delete_test.sql

echo "----- excursoes -----"
echo "select * from excursao;" | sqlite3 excursion_service.db
echo

echo "----- avaliacoes -----"
echo "select * from avaliacao;" | sqlite3 excursion_service.db
echo
