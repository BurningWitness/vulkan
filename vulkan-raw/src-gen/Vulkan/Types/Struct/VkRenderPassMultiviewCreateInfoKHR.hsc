{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_multiview

module Vulkan.Types.Struct.VkRenderPassMultiviewCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassMultiviewCreateInfoKHR" #-} VkRenderPassMultiviewCreateInfoKHR =
       VkRenderPassMultiviewCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , subpassCount :: #{type uint32_t}
         , pViewMasks :: Ptr #{type uint32_t}
         , dependencyCount :: #{type uint32_t}
         , pViewOffsets :: Ptr #{type int32_t}
         , correlationMaskCount :: #{type uint32_t}
         , pCorrelationMasks :: Ptr #{type uint32_t}
         }

instance Storable VkRenderPassMultiviewCreateInfoKHR where
  sizeOf    _ = #{size      VkRenderPassMultiviewCreateInfoKHR}
  alignment _ = #{alignment VkRenderPassMultiviewCreateInfoKHR}

  peek ptr = 
    VkRenderPassMultiviewCreateInfoKHR
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

instance Offset "sType" VkRenderPassMultiviewCreateInfoKHR where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfoKHR, sType}

instance Offset "pNext" VkRenderPassMultiviewCreateInfoKHR where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfoKHR, pNext}

instance Offset "subpassCount" VkRenderPassMultiviewCreateInfoKHR where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfoKHR, subpassCount}

instance Offset "pViewMasks" VkRenderPassMultiviewCreateInfoKHR where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfoKHR, pViewMasks}

instance Offset "dependencyCount" VkRenderPassMultiviewCreateInfoKHR where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfoKHR, dependencyCount}

instance Offset "pViewOffsets" VkRenderPassMultiviewCreateInfoKHR where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfoKHR, pViewOffsets}

instance Offset "correlationMaskCount" VkRenderPassMultiviewCreateInfoKHR where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfoKHR, correlationMaskCount}

instance Offset "pCorrelationMasks" VkRenderPassMultiviewCreateInfoKHR where
  rawOffset = #{offset VkRenderPassMultiviewCreateInfoKHR, pCorrelationMasks}

#else

module Vulkan.Types.Struct.VkRenderPassMultiviewCreateInfoKHR where

#endif