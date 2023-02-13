{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkMemoryDedicatedAllocateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryDedicatedAllocateInfo" #-} VkMemoryDedicatedAllocateInfo =
       VkMemoryDedicatedAllocateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage -- ^ Image that this allocation will be bound to
         , buffer :: VkBuffer -- ^ Buffer that this allocation will be bound to
         }

instance Storable VkMemoryDedicatedAllocateInfo where
  sizeOf    _ = #{size      VkMemoryDedicatedAllocateInfo}
  alignment _ = #{alignment VkMemoryDedicatedAllocateInfo}

  peek ptr = 
    VkMemoryDedicatedAllocateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"image" ptr)
       <*> peek (offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkMemoryDedicatedAllocateInfo where
  rawOffset = #{offset VkMemoryDedicatedAllocateInfo, sType}

instance Offset "pNext" VkMemoryDedicatedAllocateInfo where
  rawOffset = #{offset VkMemoryDedicatedAllocateInfo, pNext}

instance Offset "image" VkMemoryDedicatedAllocateInfo where
  rawOffset = #{offset VkMemoryDedicatedAllocateInfo, image}

instance Offset "buffer" VkMemoryDedicatedAllocateInfo where
  rawOffset = #{offset VkMemoryDedicatedAllocateInfo, buffer}

#else

module Vulkan.Types.Struct.VkMemoryDedicatedAllocateInfo where

#endif