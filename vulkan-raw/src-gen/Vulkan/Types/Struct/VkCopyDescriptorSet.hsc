{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkCopyDescriptorSet where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCopyDescriptorSet" #-} VkCopyDescriptorSet =
       VkCopyDescriptorSet
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcSet :: VkDescriptorSet -- ^ Source descriptor set
         , srcBinding :: #{type uint32_t} -- ^ Binding within the source descriptor set to copy from
         , srcArrayElement :: #{type uint32_t} -- ^ Array element within the source binding to copy from
         , dstSet :: VkDescriptorSet -- ^ Destination descriptor set
         , dstBinding :: #{type uint32_t} -- ^ Binding within the destination descriptor set to copy to
         , dstArrayElement :: #{type uint32_t} -- ^ Array element within the destination binding to copy to
         , descriptorCount :: #{type uint32_t} -- ^ Number of descriptors to write (determines the size of the array pointed by pDescriptors)
         }

instance Storable VkCopyDescriptorSet where
  sizeOf    _ = #{size      VkCopyDescriptorSet}
  alignment _ = #{alignment VkCopyDescriptorSet}

  peek ptr = 
    VkCopyDescriptorSet
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcSet" ptr)
       <*> peek (offset @"srcBinding" ptr)
       <*> peek (offset @"srcArrayElement" ptr)
       <*> peek (offset @"dstSet" ptr)
       <*> peek (offset @"dstBinding" ptr)
       <*> peek (offset @"dstArrayElement" ptr)
       <*> peek (offset @"descriptorCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcSet" ptr val
    pokeField @"srcBinding" ptr val
    pokeField @"srcArrayElement" ptr val
    pokeField @"dstSet" ptr val
    pokeField @"dstBinding" ptr val
    pokeField @"dstArrayElement" ptr val
    pokeField @"descriptorCount" ptr val

instance Offset "sType" VkCopyDescriptorSet where
  rawOffset = #{offset VkCopyDescriptorSet, sType}

instance Offset "pNext" VkCopyDescriptorSet where
  rawOffset = #{offset VkCopyDescriptorSet, pNext}

instance Offset "srcSet" VkCopyDescriptorSet where
  rawOffset = #{offset VkCopyDescriptorSet, srcSet}

instance Offset "srcBinding" VkCopyDescriptorSet where
  rawOffset = #{offset VkCopyDescriptorSet, srcBinding}

instance Offset "srcArrayElement" VkCopyDescriptorSet where
  rawOffset = #{offset VkCopyDescriptorSet, srcArrayElement}

instance Offset "dstSet" VkCopyDescriptorSet where
  rawOffset = #{offset VkCopyDescriptorSet, dstSet}

instance Offset "dstBinding" VkCopyDescriptorSet where
  rawOffset = #{offset VkCopyDescriptorSet, dstBinding}

instance Offset "dstArrayElement" VkCopyDescriptorSet where
  rawOffset = #{offset VkCopyDescriptorSet, dstArrayElement}

instance Offset "descriptorCount" VkCopyDescriptorSet where
  rawOffset = #{offset VkCopyDescriptorSet, descriptorCount}