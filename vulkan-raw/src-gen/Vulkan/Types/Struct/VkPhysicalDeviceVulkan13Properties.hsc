{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan13Properties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVulkan13Properties" #-} VkPhysicalDeviceVulkan13Properties =
       VkPhysicalDeviceVulkan13Properties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minSubgroupSize :: #{type uint32_t} -- ^ The minimum subgroup size supported by this device
         , maxSubgroupSize :: #{type uint32_t} -- ^ The maximum subgroup size supported by this device
         , maxComputeWorkgroupSubgroups :: #{type uint32_t} -- ^ The maximum number of subgroups supported in a workgroup
         , requiredSubgroupSizeStages :: VkShaderStageFlags -- ^ The shader stages that support specifying a subgroup size
         , maxInlineUniformBlockSize :: #{type uint32_t}
         , maxPerStageDescriptorInlineUniformBlocks :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks :: #{type uint32_t}
         , maxDescriptorSetInlineUniformBlocks :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindInlineUniformBlocks :: #{type uint32_t}
         , maxInlineUniformTotalSize :: #{type uint32_t}
         , integerDotProduct8BitUnsignedAccelerated :: VkBool32
         , integerDotProduct8BitSignedAccelerated :: VkBool32
         , integerDotProduct8BitMixedSignednessAccelerated :: VkBool32
         , integerDotProduct4x8BitPackedUnsignedAccelerated :: VkBool32
         , integerDotProduct4x8BitPackedSignedAccelerated :: VkBool32
         , integerDotProduct4x8BitPackedMixedSignednessAccelerated :: VkBool32
         , integerDotProduct16BitUnsignedAccelerated :: VkBool32
         , integerDotProduct16BitSignedAccelerated :: VkBool32
         , integerDotProduct16BitMixedSignednessAccelerated :: VkBool32
         , integerDotProduct32BitUnsignedAccelerated :: VkBool32
         , integerDotProduct32BitSignedAccelerated :: VkBool32
         , integerDotProduct32BitMixedSignednessAccelerated :: VkBool32
         , integerDotProduct64BitUnsignedAccelerated :: VkBool32
         , integerDotProduct64BitSignedAccelerated :: VkBool32
         , integerDotProduct64BitMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating8BitUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating8BitSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating16BitUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating16BitSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating32BitUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating32BitSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating64BitUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating64BitSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated :: VkBool32
         , storageTexelBufferOffsetAlignmentBytes :: VkDeviceSize
         , storageTexelBufferOffsetSingleTexelAlignment :: VkBool32
         , uniformTexelBufferOffsetAlignmentBytes :: VkDeviceSize
         , uniformTexelBufferOffsetSingleTexelAlignment :: VkBool32
         , maxBufferSize :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceVulkan13Properties where
  sizeOf    _ = #{size      VkPhysicalDeviceVulkan13Properties}
  alignment _ = #{alignment VkPhysicalDeviceVulkan13Properties}

  peek ptr = 
    VkPhysicalDeviceVulkan13Properties
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minSubgroupSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxSubgroupSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxComputeWorkgroupSubgroups" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"requiredSubgroupSizeStages" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxInlineUniformBlockSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorInlineUniformBlocks" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetInlineUniformBlocks" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindInlineUniformBlocks" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxInlineUniformTotalSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct8BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct8BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct8BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct4x8BitPackedUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct4x8BitPackedSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct4x8BitPackedMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct16BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct16BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct16BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct32BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct32BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct32BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct64BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct64BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct64BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating8BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating8BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating16BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating16BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating32BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating32BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating64BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating64BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageTexelBufferOffsetAlignmentBytes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageTexelBufferOffsetSingleTexelAlignment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformTexelBufferOffsetAlignmentBytes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformTexelBufferOffsetSingleTexelAlignment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBufferSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minSubgroupSize" ptr val
    pokeField @"maxSubgroupSize" ptr val
    pokeField @"maxComputeWorkgroupSubgroups" ptr val
    pokeField @"requiredSubgroupSizeStages" ptr val
    pokeField @"maxInlineUniformBlockSize" ptr val
    pokeField @"maxPerStageDescriptorInlineUniformBlocks" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" ptr val
    pokeField @"maxDescriptorSetInlineUniformBlocks" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindInlineUniformBlocks" ptr val
    pokeField @"maxInlineUniformTotalSize" ptr val
    pokeField @"integerDotProduct8BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct8BitSignedAccelerated" ptr val
    pokeField @"integerDotProduct8BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProduct4x8BitPackedUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct4x8BitPackedSignedAccelerated" ptr val
    pokeField @"integerDotProduct4x8BitPackedMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProduct16BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct16BitSignedAccelerated" ptr val
    pokeField @"integerDotProduct16BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProduct32BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct32BitSignedAccelerated" ptr val
    pokeField @"integerDotProduct32BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProduct64BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct64BitSignedAccelerated" ptr val
    pokeField @"integerDotProduct64BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating8BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating8BitSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating16BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating16BitSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating32BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating32BitSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating64BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating64BitSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated" ptr val
    pokeField @"storageTexelBufferOffsetAlignmentBytes" ptr val
    pokeField @"storageTexelBufferOffsetSingleTexelAlignment" ptr val
    pokeField @"uniformTexelBufferOffsetAlignmentBytes" ptr val
    pokeField @"uniformTexelBufferOffsetSingleTexelAlignment" ptr val
    pokeField @"maxBufferSize" ptr val

instance Offset "sType" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, sType}

instance Offset "pNext" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, pNext}

instance Offset "minSubgroupSize" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, minSubgroupSize}

instance Offset "maxSubgroupSize" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, maxSubgroupSize}

instance Offset "maxComputeWorkgroupSubgroups" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, maxComputeWorkgroupSubgroups}

instance Offset "requiredSubgroupSizeStages" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, requiredSubgroupSizeStages}

instance Offset "maxInlineUniformBlockSize" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, maxInlineUniformBlockSize}

instance Offset "maxPerStageDescriptorInlineUniformBlocks" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, maxPerStageDescriptorInlineUniformBlocks}

instance Offset "maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks}

instance Offset "maxDescriptorSetInlineUniformBlocks" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, maxDescriptorSetInlineUniformBlocks}

instance Offset "maxDescriptorSetUpdateAfterBindInlineUniformBlocks" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, maxDescriptorSetUpdateAfterBindInlineUniformBlocks}

instance Offset "maxInlineUniformTotalSize" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, maxInlineUniformTotalSize}

instance Offset "integerDotProduct8BitUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct8BitUnsignedAccelerated}

instance Offset "integerDotProduct8BitSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct8BitSignedAccelerated}

instance Offset "integerDotProduct8BitMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct8BitMixedSignednessAccelerated}

instance Offset "integerDotProduct4x8BitPackedUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct4x8BitPackedUnsignedAccelerated}

instance Offset "integerDotProduct4x8BitPackedSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct4x8BitPackedSignedAccelerated}

instance Offset "integerDotProduct4x8BitPackedMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct4x8BitPackedMixedSignednessAccelerated}

instance Offset "integerDotProduct16BitUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct16BitUnsignedAccelerated}

instance Offset "integerDotProduct16BitSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct16BitSignedAccelerated}

instance Offset "integerDotProduct16BitMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct16BitMixedSignednessAccelerated}

instance Offset "integerDotProduct32BitUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct32BitUnsignedAccelerated}

instance Offset "integerDotProduct32BitSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct32BitSignedAccelerated}

instance Offset "integerDotProduct32BitMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct32BitMixedSignednessAccelerated}

instance Offset "integerDotProduct64BitUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct64BitUnsignedAccelerated}

instance Offset "integerDotProduct64BitSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct64BitSignedAccelerated}

instance Offset "integerDotProduct64BitMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProduct64BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating8BitUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating8BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating8BitSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating8BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating16BitUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating16BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating16BitSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating16BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating32BitUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating32BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating32BitSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating32BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating64BitUnsignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating64BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating64BitSignedAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating64BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated}

instance Offset "storageTexelBufferOffsetAlignmentBytes" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, storageTexelBufferOffsetAlignmentBytes}

instance Offset "storageTexelBufferOffsetSingleTexelAlignment" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, storageTexelBufferOffsetSingleTexelAlignment}

instance Offset "uniformTexelBufferOffsetAlignmentBytes" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, uniformTexelBufferOffsetAlignmentBytes}

instance Offset "uniformTexelBufferOffsetSingleTexelAlignment" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, uniformTexelBufferOffsetSingleTexelAlignment}

instance Offset "maxBufferSize" VkPhysicalDeviceVulkan13Properties where
  rawOffset = #{offset VkPhysicalDeviceVulkan13Properties, maxBufferSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan13Properties where

#endif