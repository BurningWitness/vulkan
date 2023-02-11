{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkDeviceGroupCommandBufferBeginInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupCommandBufferBeginInfo" #-} VkDeviceGroupCommandBufferBeginInfo =
       VkDeviceGroupCommandBufferBeginInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceMask :: #{type uint32_t}
         }

instance Storable VkDeviceGroupCommandBufferBeginInfo where
  sizeOf    _ = #{size      struct VkDeviceGroupCommandBufferBeginInfo}
  alignment _ = #{alignment struct VkDeviceGroupCommandBufferBeginInfo}

  peek ptr = 
    VkDeviceGroupCommandBufferBeginInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"deviceMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceMask" ptr val

instance Offset "sType" VkDeviceGroupCommandBufferBeginInfo where
  rawOffset = #{offset struct VkDeviceGroupCommandBufferBeginInfo, sType}

instance Offset "pNext" VkDeviceGroupCommandBufferBeginInfo where
  rawOffset = #{offset struct VkDeviceGroupCommandBufferBeginInfo, pNext}

instance Offset "deviceMask" VkDeviceGroupCommandBufferBeginInfo where
  rawOffset = #{offset struct VkDeviceGroupCommandBufferBeginInfo, deviceMask}

#else

module Vulkan.Types.Struct.VkDeviceGroupCommandBufferBeginInfo where

#endif