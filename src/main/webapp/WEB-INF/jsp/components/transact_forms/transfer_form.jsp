<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- Card: Transfer Card -->
            <div class="card transfer-card">
                <!-- Card Body -->
                <div class="card-body">

                <!-- Transfer Form -->
                <form action="/transact/transfer" method="POST">

                    <!-- Form Group -->
                    <div class="form-group">
                        <label for="">Select Account</label>
                        <!-- Select Account Option -->
                        <select name="transfer_from" class="form-control" id="">
                            <option value="">-- Select Account --</option>
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                        <!-- End Select Account Option -->
                    </div>
                    <!-- End Of Group -->

                    <!-- Form Group -->
                    <div class="form-group">
                        <label for="">Select Account</label>
                        <!-- Select Account Option -->
                        <select name="transfer_to" class="form-control" id="">
                            <option value="">-- Select Account --</option>
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                        <!-- End Select Account Option -->
                    </div>
                    <!-- End Of Group -->


                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Enter transfer Amount</label>
                        <input type="text" name="transfer_amount" class="form-control" placeholder="Enter transfer Amount">
                    </div>
                    <!-- End Of Form Group -->

                        <!-- Form Group -->
                        <div class="form-group my-2">
                            <button id="" class="btn btn-md transact-btn">Transfer</button>
                        </div>
                        <!-- End Of Form Group -->

                </form>
                <!-- End Of Transfer Form -->

                </div>
                <!-- End Of Card Body -->

            </div>
            <!-- End Of Card: Transfer Card -->