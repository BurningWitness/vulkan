{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_fault

module Vulkan.Types.Struct.VkDeviceFaultCountsEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceFaultCountsEXT" #-} VkDeviceFaultCountsEXT =
       VkDeviceFaultCountsEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , addressInfoCount :: #{type uint32_t}
         , vendorInfoCount :: #{type uint32_t}
         , vendorBinarySize :: VkDeviceSize -- ^ Specified in bytes
         }

instance Storable VkDeviceFaultCountsEXT where
  sizeOf    _ = #{size      VkDeviceFaultCountsEXT}
  alignment _ = #{alignment VkDeviceFaultCountsEXT}

  peek ptr = 
    VkDeviceFaultCountsEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"addressInfoCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vendorInfoCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vendorBinarySize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"addressInfoCount" ptr val
    pokeField @"vendorInfoCount" ptr val
    pokeField @"vendorBinarySize" ptr val

instance Offset "sType" VkDeviceFaultCountsEXT where
  rawOffset = #{offset VkDeviceFaultCountsEXT, sType}

instance Offset "pNext" VkDeviceFaultCountsEXT where
  rawOffset = #{offset VkDeviceFaultCountsEXT, pNext}

instance Offset "addressInfoCount" VkDeviceFaultCountsEXT where
  rawOffset = #{offset VkDeviceFaultCountsEXT, addressInfoCount}

instance Offset "vendorInfoCount" VkDeviceFaultCountsEXT where
  rawOffset = #{offset VkDeviceFaultCountsEXT, vendorInfoCount}

instance Offset "vendorBinarySize" VkDeviceFaultCountsEXT where
  rawOffset = #{offset VkDeviceFaultCountsEXT, vendorBinarySize}

#else

module Vulkan.Types.Struct.VkDeviceFaultCountsEXT where

#endif