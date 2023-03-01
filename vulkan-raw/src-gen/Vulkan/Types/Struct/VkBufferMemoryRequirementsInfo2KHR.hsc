{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_memory_requirements2

module Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferMemoryRequirementsInfo2KHR" #-} VkBufferMemoryRequirementsInfo2KHR =
       VkBufferMemoryRequirementsInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         }

instance Storable VkBufferMemoryRequirementsInfo2KHR where
  sizeOf    _ = #{size      VkBufferMemoryRequirementsInfo2KHR}
  alignment _ = #{alignment VkBufferMemoryRequirementsInfo2KHR}

  peek ptr = 
    VkBufferMemoryRequirementsInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkBufferMemoryRequirementsInfo2KHR where
  rawOffset = #{offset VkBufferMemoryRequirementsInfo2KHR, sType}

instance Offset "pNext" VkBufferMemoryRequirementsInfo2KHR where
  rawOffset = #{offset VkBufferMemoryRequirementsInfo2KHR, pNext}

instance Offset "buffer" VkBufferMemoryRequirementsInfo2KHR where
  rawOffset = #{offset VkBufferMemoryRequirementsInfo2KHR, buffer}

#else

module Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2KHR where

#endif