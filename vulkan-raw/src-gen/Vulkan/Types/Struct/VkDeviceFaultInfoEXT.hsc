{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_fault

module Vulkan.Types.Struct.VkDeviceFaultInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceFaultAddressInfoEXT
import Vulkan.Types.Struct.VkDeviceFaultVendorInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceFaultInfoEXT" #-} VkDeviceFaultInfoEXT =
       VkDeviceFaultInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , description :: #{type char} -- ^ Free-form description of the fault
         , pAddressInfos :: Ptr VkDeviceFaultAddressInfoEXT
         , pVendorInfos :: Ptr VkDeviceFaultVendorInfoEXT
         , pVendorBinaryData :: Ptr ()
         }

instance Storable VkDeviceFaultInfoEXT where
  sizeOf    _ = #{size      struct VkDeviceFaultInfoEXT}
  alignment _ = #{alignment struct VkDeviceFaultInfoEXT}

  peek ptr = 
    VkDeviceFaultInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"description" ptr)
       <*> peek (offset @"pAddressInfos" ptr)
       <*> peek (offset @"pVendorInfos" ptr)
       <*> peek (offset @"pVendorBinaryData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"description" ptr val
    pokeField @"pAddressInfos" ptr val
    pokeField @"pVendorInfos" ptr val
    pokeField @"pVendorBinaryData" ptr val

instance Offset "sType" VkDeviceFaultInfoEXT where
  rawOffset = #{offset struct VkDeviceFaultInfoEXT, sType}

instance Offset "pNext" VkDeviceFaultInfoEXT where
  rawOffset = #{offset struct VkDeviceFaultInfoEXT, pNext}

instance Offset "description" VkDeviceFaultInfoEXT where
  rawOffset = #{offset struct VkDeviceFaultInfoEXT, description}

instance Offset "pAddressInfos" VkDeviceFaultInfoEXT where
  rawOffset = #{offset struct VkDeviceFaultInfoEXT, pAddressInfos}

instance Offset "pVendorInfos" VkDeviceFaultInfoEXT where
  rawOffset = #{offset struct VkDeviceFaultInfoEXT, pVendorInfos}

instance Offset "pVendorBinaryData" VkDeviceFaultInfoEXT where
  rawOffset = #{offset struct VkDeviceFaultInfoEXT, pVendorBinaryData}

#else

module Vulkan.Types.Struct.VkDeviceFaultInfoEXT where

#endif