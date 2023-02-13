{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_properties

module Vulkan.Types.Struct.VkPipelineInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineInfoEXT" #-} VkPipelineInfoEXT =
       VkPipelineInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipeline :: VkPipeline
         }

instance Storable VkPipelineInfoEXT where
  sizeOf    _ = #{size      VkPipelineInfoEXT}
  alignment _ = #{alignment VkPipelineInfoEXT}

  peek ptr = 
    VkPipelineInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipeline" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipeline" ptr val

instance Offset "sType" VkPipelineInfoEXT where
  rawOffset = #{offset VkPipelineInfoEXT, sType}

instance Offset "pNext" VkPipelineInfoEXT where
  rawOffset = #{offset VkPipelineInfoEXT, pNext}

instance Offset "pipeline" VkPipelineInfoEXT where
  rawOffset = #{offset VkPipelineInfoEXT, pipeline}

#else

module Vulkan.Types.Struct.VkPipelineInfoEXT where

#endif