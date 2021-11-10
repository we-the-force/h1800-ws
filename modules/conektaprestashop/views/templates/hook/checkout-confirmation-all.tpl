{*
* 20012 - 2016 Conekta
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author Conekta <support@conekta.io>
*  @copyright  2012-2016 PrestaShop SA
*  @version  v2.0.0
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*}

{if isset($cash) }
<p> {l s='Informacion para realizar el pago:' mod='conektaprestashop'} <p>
                <br><br><b>{l s='Monto:' mod='conektaprestashop'}</b> $ {$conekta_order.amount|escape:'htmlall':'UTF-8' } 
                {$conekta_order.currency|escape:'htmlall':'UTF-8' }
                <br><b><p>OXXO cobrará una comisión adicional al momento de realizar el pago</p>
                <br><h1>Referencia: {$conekta_order.barcode|escape:'htmlall':'UTF-8'}</h1>
                <br><h4>Instrucciones</h3>
                <br><p>1.- Acude a la tienda OXXO más cercana</p>
                <br><p>2.- Indica en caja que quieres realizar un pago de  OXXOPay</p>
                <br><p>3.- Dicta al cajero el número de referencia en esta ficha para que la tecleé directamente en la pantalla de venta</p>
                <br><p>4.- Realiza el pago correspondiente con dinero en efectivo </p>
                <br><p>5.- Al confirmar tu pago, el cajero te entregará un comprobante impreso. En él podrás verificar que se haya realizado correctamente. Conserva este comprobante de pago </p>
                <br /><br /><span>
<div class="conf confirmation">{l s='Por favor de imprimir la ficha de pago y realizar el pago en el OXXO más cercano.' mod='conektaprestashop'}</div>
{/if}

{if isset($card) }
{if $conekta_order.valid == 1 }
		<div class="conf confirmation">{l s='Pago Exitoso, el pago ha sido aprobado y el pedido se ha guardado con la referencia ' mod='conektaprestashop'} <b>{$conekta_order.reference|escape:'htmlall':'UTF-8'}</b>.</div>
{else}
		<div class="error">{l s='Sorry, unfortunately an error occurred during the transaction.' mod='conektaprestashop'}<br /><br />
		{l s='Please double-check your credit card details and try again or feel free to contact us to resolve this issue.' mod='conektaprestashop'}<br /><br />
		({l s='Your Order\'s Reference:' mod='conektaprestashop'} <b>{$conekta_order.reference|escape:'htmlall':'UTF-8'}</b>)</div>
{/if}
{/if}

{if isset($spei) }
<p> {l s='Informacion para realizar el pago por medio de SPEI:' mod='conektaprestashop'} <p>
                <br><br><b>{l s='Monto:' mod='conektaprestashop'}</b> $ {$conekta_order.amount|escape:'htmlall':'UTF-8' } {$conekta_order.currency|escape:'htmlall':'UTF-8' }
                <br><br><b>{l s='CLABE:' mod='conektaprestashop'}</b>
                <br>{$conekta_order.receiving_account_number|escape:'htmlall':'UTF-8'}
                <br /><br /><span>
<div class="conf confirmation">{l s='Por favor de realizar el pago por medio de SPEI.' mod='conektaprestashop'}</div>
{/if}
