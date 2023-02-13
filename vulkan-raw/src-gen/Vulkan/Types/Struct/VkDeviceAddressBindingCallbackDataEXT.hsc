{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_address_binding_report

module Vulkan.Types.Struct.VkDeviceAddressBindingCallbackDataEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkDeviceAddressBindingFlagsEXT
import Vulkan.Types.Enum.VkDeviceAddressBindingTypeEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceAddressBindingCallbackDataEXT" #-} VkDeviceAddressBindingCallbackDataEXT =
       VkDeviceAddressBindingCallbackDataEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDeviceAddressBindingFlagsEXT
         , baseAddress :: VkDeviceAddress
         , size :: VkDeviceSize
         , bindingType :: VkDeviceAddressBindingTypeEXT
         }

instance Storable VkDeviceAddressBindingCallbackDataEXT where
  sizeOf    _ = #{size      VkDeviceAddressBindingCallbackDataEXT}
  alignment _ = #{alignment VkDeviceAddressBindingCallbackDataEXT}

  peek ptr = 
    VkDeviceAddressBindingCallbackDataEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"baseAddress" ptr)
       <*> peek (offset @"size" ptr)
       <*> peek (offset @"bindingType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"baseAddress" ptr val
    pokeField @"size" ptr val
    pokeField @"bindingType" ptr val

instance Offset "sType" VkDeviceAddressBindingCallbackDataEXT where
  rawOffset = #{offset VkDeviceAddressBindingCallbackDataEXT, sType}

instance Offset "pNext" VkDeviceAddressBindingCallbackDataEXT where
  rawOffset = #{offset VkDeviceAddressBindingCallbackDataEXT, pNext}

instance Offset "flags" VkDeviceAddressBindingCallbackDataEXT where
  rawOffset = #{offset VkDeviceAddressBindingCallbackDataEXT, flags}

instance Offset "baseAddress" VkDeviceAddressBindingCallbackDataEXT where
  rawOffset = #{offset VkDeviceAddressBindingCallbackDataEXT, baseAddress}

instance Offset "size" VkDeviceAddressBindingCallbackDataEXT where
  rawOffset = #{offset VkDeviceAddressBindingCallbackDataEXT, size}

instance Offset "bindingType" VkDeviceAddressBindingCallbackDataEXT where
  rawOffset = #{offset VkDeviceAddressBindingCallbackDataEXT, bindingType}

#else

module Vulkan.Types.Struct.VkDeviceAddressBindingCallbackDataEXT where

#endif