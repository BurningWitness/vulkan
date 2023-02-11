{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_fault

module Vulkan.Types.Struct.VkDeviceFaultVendorInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceFaultVendorInfoEXT" #-} VkDeviceFaultVendorInfoEXT =
       VkDeviceFaultVendorInfoEXT
         { description :: #{type char} -- ^ Free-form description of the fault
         , vendorFaultCode :: #{type uint64_t}
         , vendorFaultData :: #{type uint64_t}
         }

instance Storable VkDeviceFaultVendorInfoEXT where
  sizeOf    _ = #{size      struct VkDeviceFaultVendorInfoEXT}
  alignment _ = #{alignment struct VkDeviceFaultVendorInfoEXT}

  peek ptr = 
    VkDeviceFaultVendorInfoEXT
       <$> peek (offset @"description" ptr)
       <*> peek (offset @"vendorFaultCode" ptr)
       <*> peek (offset @"vendorFaultData" ptr)

  poke ptr val = do
    pokeField @"description" ptr val
    pokeField @"vendorFaultCode" ptr val
    pokeField @"vendorFaultData" ptr val

instance Offset "description" VkDeviceFaultVendorInfoEXT where
  rawOffset = #{offset struct VkDeviceFaultVendorInfoEXT, description}

instance Offset "vendorFaultCode" VkDeviceFaultVendorInfoEXT where
  rawOffset = #{offset struct VkDeviceFaultVendorInfoEXT, vendorFaultCode}

instance Offset "vendorFaultData" VkDeviceFaultVendorInfoEXT where
  rawOffset = #{offset struct VkDeviceFaultVendorInfoEXT, vendorFaultData}

#else

module Vulkan.Types.Struct.VkDeviceFaultVendorInfoEXT where

#endif