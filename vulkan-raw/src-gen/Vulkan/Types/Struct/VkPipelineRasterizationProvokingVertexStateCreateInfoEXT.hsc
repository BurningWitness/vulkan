{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_provoking_vertex

module Vulkan.Types.Struct.VkPipelineRasterizationProvokingVertexStateCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkProvokingVertexModeEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRasterizationProvokingVertexStateCreateInfoEXT" #-} VkPipelineRasterizationProvokingVertexStateCreateInfoEXT =
       VkPipelineRasterizationProvokingVertexStateCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , provokingVertexMode :: VkProvokingVertexModeEXT
         }

instance Storable VkPipelineRasterizationProvokingVertexStateCreateInfoEXT where
  sizeOf    _ = #{size      VkPipelineRasterizationProvokingVertexStateCreateInfoEXT}
  alignment _ = #{alignment VkPipelineRasterizationProvokingVertexStateCreateInfoEXT}

  peek ptr = 
    VkPipelineRasterizationProvokingVertexStateCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"provokingVertexMode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"provokingVertexMode" ptr val

instance Offset "sType" VkPipelineRasterizationProvokingVertexStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationProvokingVertexStateCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineRasterizationProvokingVertexStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationProvokingVertexStateCreateInfoEXT, pNext}

instance Offset "provokingVertexMode" VkPipelineRasterizationProvokingVertexStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationProvokingVertexStateCreateInfoEXT, provokingVertexMode}

#else

module Vulkan.Types.Struct.VkPipelineRasterizationProvokingVertexStateCreateInfoEXT where

#endif