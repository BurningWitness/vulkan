{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkRenderPassMultiviewCreateInfo}
  alignment _ = #{alignment VkRenderPassMultiviewCreateInfo}

  peek ptr = 
    VkRenderPassMultiviewCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subpassCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pViewMasks" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dependencyCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pViewOffsets" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"correlationMaskCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCorrelationMasks" ptr)

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
  rawOffset = #{offset VkRenderPassMultiviewCreateInfo, sType}

instance Offset "pNext" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfo, pNext}

instance Offset "subpassCount" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfo, subpassCount}

instance Offset "pViewMasks" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfo, pViewMasks}

instance Offset "dependencyCount" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfo, dependencyCount}

instance Offset "pViewOffsets" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfo, pViewOffsets}

instance Offset "correlationMaskCount" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfo, correlationMaskCount}

instance Offset "pCorrelationMasks" VkRenderPassMultiviewCreateInfo where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfo, pCorrelationMasks}

#else

module Vulkan.Types.Struct.VkRenderPassMultiviewCreateInfo where

#endif