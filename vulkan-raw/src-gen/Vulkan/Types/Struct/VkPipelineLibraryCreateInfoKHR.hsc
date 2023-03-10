{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_library

module Vulkan.Types.Struct.VkPipelineLibraryCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineLibraryCreateInfoKHR" #-} VkPipelineLibraryCreateInfoKHR =
       VkPipelineLibraryCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , libraryCount :: #{type uint32_t}
         , pLibraries :: Ptr VkPipeline
         }

instance Storable VkPipelineLibraryCreateInfoKHR where
  sizeOf    _ = #{size      VkPipelineLibraryCreateInfoKHR}
  alignment _ = #{alignment VkPipelineLibraryCreateInfoKHR}

  peek ptr = 
    VkPipelineLibraryCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"libraryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pLibraries" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"libraryCount" ptr val
    pokeField @"pLibraries" ptr val

instance Offset "sType" VkPipelineLibraryCreateInfoKHR where
  rawOffset = #{offset VkPipelineLibraryCreateInfoKHR, sType}

instance Offset "pNext" VkPipelineLibraryCreateInfoKHR where
  rawOffset = #{offset VkPipelineLibraryCreateInfoKHR, pNext}

instance Offset "libraryCount" VkPipelineLibraryCreateInfoKHR where
  rawOffset = #{offset VkPipelineLibraryCreateInfoKHR, libraryCount}

instance Offset "pLibraries" VkPipelineLibraryCreateInfoKHR where
  rawOffset = #{offset VkPipelineLibraryCreateInfoKHR, pLibraries}

#else

module Vulkan.Types.Struct.VkPipelineLibraryCreateInfoKHR where

#endif