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
  sizeOf    _ = #{size      VkGraphicsPipelineLibraryCreateInfoEXT}
  alignment _ = #{alignment VkGraphicsPipelineLibraryCreateInfoEXT}

  peek ptr = 
    VkGraphicsPipelineLibraryCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkGraphicsPipelineLibraryCreateInfoEXT where
  rawOffset = #{offset VkGraphicsPipelineLibraryCreateInfoEXT, sType}

instance Offset "pNext" VkGraphicsPipelineLibraryCreateInfoEXT where
  rawOffset = #{offset VkGraphicsPipelineLibraryCreateInfoEXT, pNext}

instance Offset "flags" VkGraphicsPipelineLibraryCreateInfoEXT where
  rawOffset = #{offset VkGraphicsPipelineLibraryCreateInfoEXT, flags}

#else

module Vulkan.Types.Struct.VkGraphicsPipelineLibraryCreateInfoEXT where

#endif