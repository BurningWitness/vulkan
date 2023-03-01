{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkCommandBufferAllocateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCommandBufferLevel
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferAllocateInfo" #-} VkCommandBufferAllocateInfo =
       VkCommandBufferAllocateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , commandPool :: VkCommandPool
         , level :: VkCommandBufferLevel
         , commandBufferCount :: #{type uint32_t}
         }

instance Storable VkCommandBufferAllocateInfo where
  sizeOf    _ = #{size      VkCommandBufferAllocateInfo}
  alignment _ = #{alignment VkCommandBufferAllocateInfo}

  peek ptr = 
    VkCommandBufferAllocateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"commandPool" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"level" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"commandBufferCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"commandPool" ptr val
    pokeField @"level" ptr val
    pokeField @"commandBufferCount" ptr val

instance Offset "sType" VkCommandBufferAllocateInfo where
  rawOffset = #{offset VkCommandBufferAllocateInfo, sType}

instance Offset "pNext" VkCommandBufferAllocateInfo where
  rawOffset = #{offset VkCommandBufferAllocateInfo, pNext}

instance Offset "commandPool" VkCommandBufferAllocateInfo where
  rawOffset = #{offset VkCommandBufferAllocateInfo, commandPool}

instance Offset "level" VkCommandBufferAllocateInfo where
  rawOffset = #{offset VkCommandBufferAllocateInfo, level}

instance Offset "commandBufferCount" VkCommandBufferAllocateInfo where
  rawOffset = #{offset VkCommandBufferAllocateInfo, commandBufferCount}