{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Struct.VkPipelineExecutableInternalRepresentationKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineExecutableInternalRepresentationKHR" #-} VkPipelineExecutableInternalRepresentationKHR =
       VkPipelineExecutableInternalRepresentationKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , name :: #{type char}
         , description :: #{type char}
         , isText :: VkBool32
         , dataSize :: #{type size_t}
         , pData :: Ptr ()
         }

instance Storable VkPipelineExecutableInternalRepresentationKHR where
  sizeOf    _ = #{size      VkPipelineExecutableInternalRepresentationKHR}
  alignment _ = #{alignment VkPipelineExecutableInternalRepresentationKHR}

  peek ptr = 
    VkPipelineExecutableInternalRepresentationKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"name" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"description" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"isText" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"name" ptr val
    pokeField @"description" ptr val
    pokeField @"isText" ptr val
    pokeField @"dataSize" ptr val
    pokeField @"pData" ptr val

instance Offset "sType" VkPipelineExecutableInternalRepresentationKHR where
  rawOffset = #{offset VkPipelineExecutableInternalRepresentationKHR, sType}

instance Offset "pNext" VkPipelineExecutableInternalRepresentationKHR where
  rawOffset = #{offset VkPipelineExecutableInternalRepresentationKHR, pNext}

instance Offset "name" VkPipelineExecutableInternalRepresentationKHR where
  rawOffset = #{offset VkPipelineExecutableInternalRepresentationKHR, name}

instance Offset "description" VkPipelineExecutableInternalRepresentationKHR where
  rawOffset = #{offset VkPipelineExecutableInternalRepresentationKHR, description}

instance Offset "isText" VkPipelineExecutableInternalRepresentationKHR where
  rawOffset = #{offset VkPipelineExecutableInternalRepresentationKHR, isText}

instance Offset "dataSize" VkPipelineExecutableInternalRepresentationKHR where
  rawOffset = #{offset VkPipelineExecutableInternalRepresentationKHR, dataSize}

instance Offset "pData" VkPipelineExecutableInternalRepresentationKHR where
  rawOffset = #{offset VkPipelineExecutableInternalRepresentationKHR, pData}

#else

module Vulkan.Types.Struct.VkPipelineExecutableInternalRepresentationKHR where

#endif