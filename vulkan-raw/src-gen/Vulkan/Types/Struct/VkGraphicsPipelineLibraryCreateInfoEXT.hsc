{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_graphics_pipeline_library

module Vulkan.Types.Struct.VkGraphicsPipelineLibraryCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkGraphicsPipelineLibraryFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkGraphicsPipelineLibraryCreateInfoEXT" #-} VkGraphicsPipelineLibraryCreateInfoEXT =
       VkGraphicsPipelineLibraryCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkGraphicsPipelineLibraryFlagsEXT
         }

instance Storable VkGraphicsPipelineLibraryCreateInfoEXT where
  sizeOf    _ = #{size      struct VkGraphicsPipelineLibraryCreateInfoEXT}
  alignment _ = #{alignment struct VkGraphicsPipelineLibraryCreateInfoEXT}

  peek ptr = 
    VkGraphicsPipelineLibraryCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkGraphicsPipelineLibraryCreateInfoEXT where
  rawOffset = #{offset struct VkGraphicsPipelineLibraryCreateInfoEXT, sType}

instance Offset "pNext" VkGraphicsPipelineLibraryCreateInfoEXT where
  rawOffset = #{offset struct VkGraphicsPipelineLibraryCreateInfoEXT, pNext}

instance Offset "flags" VkGraphicsPipelineLibraryCreateInfoEXT where
  rawOffset = #{offset struct VkGraphicsPipelineLibraryCreateInfoEXT, flags}

#else

module Vulkan.Types.Struct.VkGraphicsPipelineLibraryCreateInfoEXT where

#endif