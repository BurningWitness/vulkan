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

module Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImageSparseMemoryRequirementsInfo2KHR" #-} VkImageSparseMemoryRequirementsInfo2KHR =
       VkImageSparseMemoryRequirementsInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage
         }

instance Storable VkImageSparseMemoryRequirementsInfo2KHR where
  sizeOf    _ = #{size      VkImageSparseMemoryRequirementsInfo2KHR}
  alignment _ = #{alignment VkImageSparseMemoryRequirementsInfo2KHR}

  peek ptr = 
    VkImageSparseMemoryRequirementsInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"image" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val

instance Offset "sType" VkImageSparseMemoryRequirementsInfo2KHR where
  rawOffset = #{offset VkImageSparseMemoryRequirementsInfo2KHR, sType}

instance Offset "pNext" VkImageSparseMemoryRequirementsInfo2KHR where
  rawOffset = #{offset VkImageSparseMemoryRequirementsInfo2KHR, pNext}

instance Offset "image" VkImageSparseMemoryRequirementsInfo2KHR where
  rawOffset = #{offset VkImageSparseMemoryRequirementsInfo2KHR, image}

#else

module Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2KHR where

#endif