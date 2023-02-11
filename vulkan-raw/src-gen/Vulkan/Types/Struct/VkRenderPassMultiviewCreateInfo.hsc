{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkRenderPassMultiviewCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassMultiviewCreateInfo" #-} VkRenderPassMultiviewCreateInfo =
       VkRenderPassMultiviewCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , subpassCount :: #{type uint32_t}
         , pViewMasks :: Ptr #{type uint32_t}
         , dependencyCount :: #{type uint32_t}
         , pViewOffsets :: Ptr #{type int32_t}
         , correlationMaskCount :: #{type uint32_t}
         , pCorrelationMasks :: Ptr #{type uint32_t}
         }

instance Storable VkRenderPassMultiviewCreateInfo where
  sizeOf    _ = #{size      struct VkRenderPassMultiviewCreateInfo}
  alignment _ = #{alignment struct VkRenderPassMultiviewCreateInfo}

  peek ptr = 
    VkRenderPassMultiviewCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"subpassCount" ptr)
       <*> peek (offset @"pViewMasks" ptr)
       <*> peek (offset @"dependencyCount" ptr)
       <*> peek (offset @"pViewOffsets" ptr)
       <*> peek (offset @"correlationMaskCount" ptr)
       <*> peek (offset @"pCorrelationMasks" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"subpassCount" ptr val
    pokeField @"pViewMasks" ptr val
    pokeField @"dependencyCount" ptr val
    pokeField @"pViewOffsets" ptr val
    pokeField @"correlationMaskCount" ptr val
    pokeField @"pCorrelationMasks" ptr val

instance Offset "sType" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset struct VkRenderPassMultiviewCreateInfo, sType}

instance Offset "pNext" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset struct VkRenderPassMultiviewCreateInfo, pNext}

instance Offset "subpassCount" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset struct VkRenderPassMultiviewCreateInfo, subpassCount}

instance Offset "pViewMasks" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset struct VkRenderPassMultiviewCreateInfo, pViewMasks}

instance Offset "dependencyCount" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset struct VkRenderPassMultiviewCreateInfo, dependencyCount}

instance Offset "pViewOffsets" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset struct VkRenderPassMultiviewCreateInfo, pViewOffsets}

instance Offset "correlationMaskCount" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset struct VkRenderPassMultiviewCreateInfo, correlationMaskCount}

instance Offset "pCorrelationMasks" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset struct VkRenderPassMultiviewCreateInfo, pCorrelationMasks}

#else

module Vulkan.Types.Struct.VkRenderPassMultiviewCreateInfo where

#endif