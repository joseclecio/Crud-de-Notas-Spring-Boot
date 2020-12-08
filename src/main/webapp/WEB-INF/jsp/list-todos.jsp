<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
 <div>
  <a type="button" class="btn btn-primary btn-md" href="/add-todo">Adicionar Nota</a>
 </div>
 <br>
 <div class="panel panel-primary">
  <div class="panel-heading">
   <h3>Listagem das Notas</h3>
  </div>
  <div class="panel-body">
   <table class="table table-striped">
    <thead>
     <tr>
      <th width="40%">Descri��o</th>
      <th width="40%">Data de Cria��o</th>
      <th width="20%"></th>
     </tr>
    </thead>
    <tbody>
     <c:forEach items="${todos}" var="todo">
      <tr>
       <td>${todo.description}</td>
       <td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy" /></td>
       <td><a type="button" class="btn btn-success"
        href="/update-todo?id=${todo.id}">Editar</a>
       <a type="button" class="btn btn-danger"
        href="/delete-todo?id=${todo.id}">Excluir</a></td>
      </tr>
     </c:forEach>
    </tbody>
   </table>
  </div>
 </div>

</div>
<%@ include file="common/footer.jspf"%>