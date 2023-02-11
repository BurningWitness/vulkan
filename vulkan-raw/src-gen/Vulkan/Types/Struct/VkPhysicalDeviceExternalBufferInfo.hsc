{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkBufferCreateFlags
import Vulkan.Types.Enum.VkBufferUsageFlags
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalBufferInfo" #-} VkPhysicalDeviceExternalBufferInfo =
       VkPhysicalDeviceExternalBufferInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkBufferCreateFlags
         , usage :: VkBufferUsageFlags
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalBufferInfo where
  sizeOf    _ = #{size      struct VkPhysicalDeviceExternalBufferInfo}
  alignment _ = #{alignment struct VkPhysicalDeviceExternalBufferInfo}

  peek ptr = 
    VkPhysicalDeviceExternalBufferInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"usage" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"usage" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset struct VkPhysicalDeviceExternalBufferInfo, sType}

instance Offset "pNext" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset struct VkPhysicalDeviceExternalBufferInfo, pNext}

instance Offset "flags" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset struct VkPhysicalDeviceExternalBufferInfo, flags}

instance Offset "usage" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset struct VkPhysicalDeviceExternalBufferInfo, usage}

instance Offset "handleType" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset struct VkPhysicalDeviceExternalBufferInfo, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfo where

#endif