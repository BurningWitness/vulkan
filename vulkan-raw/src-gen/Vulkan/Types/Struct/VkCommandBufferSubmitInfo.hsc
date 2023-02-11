{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkCommandBufferSubmitInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferSubmitInfo" #-} VkCommandBufferSubmitInfo =
       VkCommandBufferSubmitInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , commandBuffer :: VkCommandBuffer
         , deviceMask :: #{type uint32_t}
         }

instance Storable VkCommandBufferSubmitInfo where
  sizeOf    _ = #{size      struct VkCommandBufferSubmitInfo}
  alignment _ = #{alignment struct VkCommandBufferSubmitInfo}

  peek ptr = 
    VkCommandBufferSubmitInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"commandBuffer" ptr)
       <*> peek (offset @"deviceMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"commandBuffer" ptr val
    pokeField @"deviceMask" ptr val

instance Offset "sType" VkCommandBufferSubmitInfo where
  rawOffset = #{offset struct VkCommandBufferSubmitInfo, sType}

instance Offset "pNext" VkCommandBufferSubmitInfo where
  rawOffset = #{offset struct VkCommandBufferSubmitInfo, pNext}

instance Offset "commandBuffer" VkCommandBufferSubmitInfo where
  rawOffset = #{offset struct VkCommandBufferSubmitInfo, commandBuffer}

instance Offset "deviceMask" VkCommandBufferSubmitInfo where
  rawOffset = #{offset struct VkCommandBufferSubmitInfo, deviceMask}

#else

module Vulkan.Types.Struct.VkCommandBufferSubmitInfo where

#endif